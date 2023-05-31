// {..} means we are handling a JS object with an unknown
// set of attributes
@module external styles: {..} = "./style.module.scss"

// Use the obj["key"] syntax to access any classname within our object
let app = <div className={styles["root"]}>{React.float(2.32323)}</div>

@react.component
let make = () => {
  <div> app </div>
}