<!DOCTYPE html>
<style xmlns="http://www.w3.org/1999/html">
. {
  margin: 0;
  padding: 0;

  box-sizing: border-box;
  font-family: sans-serif;
}
@media print {
.table, .table__body {
overflow: visible;
height: auto !important;
width: auto !important;
}
}

/*@page {
  size: landscape;
  margin: 0;
}*/

body {
  min-height: 100vh;
  background: url(images/html_table.jpg) center / cover;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: black;
}

main.table {
  width: 82vw;
  height: 90vh;
  background-color: #efb23f;



  backdrop-filter: blur(7px);
  box-shadow: 0 .4rem .8rem #0005;
  border-radius: .8rem;

  overflow: hidden;
}

.table__header {
  width: 100%;
  height: 10%;
  background-color: #efb23f;
  padding: .8rem 1rem;

  display: flex;
  justify-content: space-between;
  align-items: center;
}

.table__header h1{
font-size: 35px;
color: #5b3013;
padding-left: 20px;
font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;

}
.table__header .input-group {
  width: 35%;
  height: 100%;
  background-color: #fff5;
  padding: 0 .8rem;
  border: 2px solid black;
  box-sizing: border-box;
  display: flex;
  justify-content: center;
  align-items: center;
border-radius: 2rem;
  transition: .2s;
}


.table__header .input-group:hover {
  width: 45%;
  background-color: #fff8;
  box-shadow: 0 .1rem .4rem #0002;
}

.table__header .input-group img {
  width: 1.2rem;
  height: 1.2rem;
}

.table__header .input-group input {
  width: 100%;
  padding: 0 .5rem 0 .3rem;
  background-color: transparent;
  border: none;
  outline: none;
}

.table__body {
  width: 95%;
  max-height: calc(89% - 1.6rem);
  background-color: #fffb;

  margin: .8rem auto;
  border-radius: .6rem;

  overflow: auto;
  overflow: overlay;
}


.table__body::-webkit-scrollbar{
  width: 0.5rem;
  height: 0.5rem;
}

.table__body::-webkit-scrollbar-thumb{
  border-radius: .5rem;
  background-color: #0004;
  visibility: hidden;
}

.table__body:hover::-webkit-scrollbar-thumb{
  visibility: visible;
}


table {
  width: 100%;
}

td img {
  width: 36px;
  height: 36px;
  margin-right: .5rem;
  border-radius: 50%;

  vertical-align: middle;
}

table, th, td {
  border-collapse: collapse;
  padding: 1rem;
  text-align: left;
}

thead th {
  position: sticky;
  top: 0;
  left: 0;
  background-color: #d5d1defe;
  cursor: pointer;
  text-transform: capitalize;
}

tbody tr:nth-child(even) {
  background-color: #0000000b;
}

tbody tr {
  --delay: .1s;
  transition: .5s ease-in-out var(--delay), background-color 0s;
}

tbody tr.hide {
  opacity: 0;
  transform: translateX(100%);
}

tbody tr:hover {
  background-color: #fff6 !important;
}

tbody tr td,
tbody tr td p,
tbody tr td img {
  transition: .2s ease-in-out;
}

tbody tr.hide td,
tbody tr.hide td p {
  padding: 0;
  font: 0 / 0 sans-serif;
  transition: .2s ease-in-out .5s;
}

tbody tr.hide td img {
  width: 0;
  height: 0;
  transition: .2s ease-in-out .5s;
}

.status {
  padding: .4rem 0;
  border-radius: 2rem;
  text-align: center;
}

.status.delivered {
  background-color: #86e49d;
  color: #006b21;
}

.status.cancelled {
  background-color: #d893a3;
  color: #b30021;
}

.status.pending {
  background-color: #ebc474;
}

.status.shipped {
  background-color: #6fcaea;
}


@media (max-width: 1000px) {
  td:not(:first-of-type) {
      min-width: 12.1rem;
  }
}

thead th span.icon-arrow {
  display: inline-block;
  width: 1.3rem;
  height: 1.3rem;
  border-radius: 50%;
  border: 1.4px solid transparent;

  text-align: center;
  font-size: 1rem;

  margin-left: .5rem;
  transition: .2s ease-in-out;
}

thead th:hover span.icon-arrow{
  border: 1.4px solid #6c00bd;
}

thead th:hover {
  color: #6c00bd;
}

thead th.active span.icon-arrow{
  background-color: #6c00bd;
  color: #fff;
}

thead th.asc span.icon-arrow{
  transform: rotate(180deg);
}

thead th.active,tbody td.active {
  color: #6c00bd;
}

.export__file {
  position: relative;
}

.export_file .export_file-btn {
  display: inline-block;
  width: 2rem;
  height: 2rem;
  background: #fff6 url(images/export.png) center / 80% no-repeat;
  border-radius: 50%;
  transition: .2s ease-in-out;
}

.export_file .export_file-btn:hover {
  background-color: #fff;
  transform: scale(1.15);
  cursor: pointer;
}

.export__file input {
  display: none;
}

.export_file .export_file-options {
  position: absolute;
  right: 0;

  width: 12rem;
  border-radius: .5rem;
  overflow: hidden;
  text-align: center;

  opacity: 0;
  transform: scale(.8);
  transform-origin: top right;

  box-shadow: 0 .2rem .5rem #0004;

  transition: .2s;
}

.export_file input:checked + .export_file-options {
  opacity: 1;
  transform: scale(1);
  z-index: 100;
}

.export_file .export_file-options label{
  display: block;
  width: 100%;
  padding: .6rem 0;
  background-color: #f2f2f2;

  display: flex;
  justify-content: space-around;
  align-items: center;

  transition: .2s ease-in-out;
}

.export_file .export_file-options label:first-of-type{
  padding: 1rem 0;
  background-color: #86e49d !important;
}

.export_file .export_file-options label:hover{
  transform: scale(1.05);
  background-color: #fff;
  cursor: pointer;
}

.export_file .export_file-options img{
  width: 2rem;
  height: auto;
}</style>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Convert | Export html Table to CSV & EXCEL File</title>
    <link rel="stylesheet" type="text/css" href="ui.css">
</head>

<body>
    <main class="table" id="customers_table">
        <section class="table__header">
            <h1>CUSTOMER'S ORDER</h1>
            <div class="input-group">
                <input type="search" placeholder="Search Data...">

            </div>
              <form action="/ownertable" method="post">
            <div class="input-group1">

                  <button style="background-color:red; border-color:black"  name="delete" value="1">
        Delete All
              </button>
                 <button style="background-color:red; border-color:black"  name="delete" value="2">
        Whatsapp
              </button>
            </div>
                   <button style="background-color:red; border-color:black"  name="delete" value="3">
        accepted_orders
              </button>
                   <button style="background-color:red; border-color:black"  name="delete" value="4">
        Delivered_orders
              </button>
            </form>
            </form>
            <div class="export__file">
                <label for="export-file" class="export__file-btn" title="Export File"></label>

            </div>
        </section>
        <section class="table__body">
            <form action="/table" method="post">
            <table>
                <thead>
                    <tr>

                        <th> CUSTOMER <span class="icon-arrow">&UpArrow;</span></th>
                        <th> EMAIL ID<span class="icon-arrow">&UpArrow;</span></th>
                        <th> NUMBER<span class="icon-arrow">&UpArrow;</span></th>
                        <th> LOCATION<span class="icon-arrow">&UpArrow;</span></th>
                        <th> CAKE  <span class="icon-arrow">&UpArrow;</span></th>
                        <th> ORDER DATE <span class="icon-arrow">&UpArrow;</span></th>
                        <th> Weight <span class="icon-arrow">&UpArrow;</span></th>
                        <th> AMOUNT <span class="icon-arrow">&UpArrow;</span></th>
                        <th> Payment Mode <span class="icon-arrow">&UpArrow;</span></th>


                    </tr>
                </thead>
               <tbody>

               % for row in accept:
        <tr>

            <td>{{ row[0]}}</td>
            <td>{{ row[1] }}</td>
            <td>{{ row[2] }}</td>
            <td>{{ row[3] }}</td>
            <td>{{ row[4] }}</td>
            <td>{{ row[5] }}</td>
            <td>{{ row[6] }}</td>
            <td>{{ row[7] }}</td>
            <td>{{ row[8] }}</td>

            <td><button  name="acept" value='deliver'>deliverd</button></td>
        </tr>
        % end

        </tbody>

            </table>

            </form>

        </section>

    </main>
    <script src="script.js"></script>

</body>

</html>