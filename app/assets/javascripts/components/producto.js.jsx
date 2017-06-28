
class Productos extends React.Component {

    constructor(props){
        super(props);
        this.state = {
            product_selected: [],
            tot: 0
        };
    }
    clickme(product){
        let products_selected = this.state.product_selected
        if(products_selected.length > 0){
            let tot = this.state.tot;
            if(products_selected.indexOf(product.id)==-1){
                products_selected.push(product.id);
                tot = tot + product.precio;
            } else {
                products_selected.splice(products_selected.indexOf(product.id),1);
                tot = tot - product.precio;
            }
            this.setState({tot:tot, product_selected: products_selected})
        }
        else{
            let tot = this.state.tot
            let products_selected = this.state.product_selected
            tot = tot + product.precio
            products_selected.push(product.id)
            this.setState({tot:tot, product_selected: products_selected})

        }
    }
    goTo(){
        window.location.href=`/medios?monto=${this.state.tot}`;
    }
    _create() {
        return $.ajax({
            url: '/ordenes',
            type: 'POST',
            data: {
                monto: this.state.tot,
                productos: this.state.product_selected
            }
        })
    }

    _onSubmit(e){
        e.preventDefault();
        var xhr = this._create();
        xhr.done(this._onSuccess)
    }

    _onSuccess(data){
        console.log(data);
    }

    render (){
        return<div className="row">
            <div className="col-sm-12">
                <div>
                    <table className="table table-bordered">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Producto</th>
                            <th>Precio</th>
                        </tr>
                        </thead>
                        <tbody>
                        {this.props.productos.map((e,i)=>

                            <tr key={e.id} onClick={this.clickme.bind(this,e)} className={this.state.product_selected.indexOf(e.id)==-1?"":"bg-success"}>
                                <th scope="row">{e.id}</th>
                                <td>{e.nombre}</td>
                                <td>{e.precio}</td>
                            </tr>
                        )}
                        <tr>
                            <th colSpan={2}> Total a Pagar </th>
                            <td>{this.state.tot}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div className="col-sm-12">
            <form ref="form"
                  onSubmit={this._onSubmit.bind(this)}>
                <div>
                    <button type="submit" className=" col-sm-12 btn btn-primary btn-pill btn-next" disabled={this.state.tot==0}>
                        Seleccionar Productos</button>
                </div>
            </form>
            </div>
        </div>

    }
}
