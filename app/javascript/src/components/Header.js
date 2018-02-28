import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Link, Route } from 'react-router-dom'
import Stock from './Stock.js'
import Product from './Product.js'

export default class App extends React.Component {
    render() {
        return (
            <div>
                <nav>
                    <Link to="/stocks">Stock</Link>
                    <Link to="/products">Product</Link>
                </nav>
                <div>
                    <Route path="/stocks" component={Stock} />
                    <Route path="/products" component={Product} />
                </div>
            </div>
        );
    }
}
