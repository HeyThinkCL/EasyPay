class Productos extends React.Component {

    constructor(props){
        super(props);
        this.state = {
            tabla:this.tabla(),
            tot: 0
        };
    }

    tabla() {
        return this.props.productos.map(function (producto) {
            this.clickme = function () {
                if(producto.hasOwnProperty("clickme") == false){
                    producto.clickme = true
                    tot = tot + producto.precio
                    this.setState({tot: tot});
                }else{
                    producto.clickme = !producto.clickme
                    tot = tot - producto.precio
                    this.setState({tot: tot});
                }
                this.setState({tabla:tabla()})
            }
            if(producto.hasOwnProperty("clickme") == false || producto.clickme == false){
                return <tr key={producto.id} onClick={this.clickme}>
                    <th scope="row">{producto.id}</th>
                    <td>{producto.nombre}</td>
                    <td>{producto.precio}</td>
                </tr>
            }else{
                return <tr className="btn-success" key={producto.id} onClick={this.clickme}>
                    <th scope="row">{producto.id}</th>
                    <td>{producto.nombre}</td>
                    <td>{producto.precio}</td>
                </tr>
            }
        })
    }
    render (){
        return <div>
            <table className="table table-bordered">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Producto</th>
                    <th>Precio</th>
                </tr>
                </thead>
                <tbody>
                {this.state.tabla}
                </tbody>
            </table>
        </div>
    }
}