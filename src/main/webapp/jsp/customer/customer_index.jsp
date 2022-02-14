<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Beans.PriceBean PB = new Beans.PriceBean();
    ArrayList<HashMap<String, String>> list = PB.getDATA();
    for(int i = 0; i < list.size(); i++) {
        System.out.println(list.get(i).get("2"));
    }
/*
    DATABASE.Access DataBase_Access = new DATABASE.Access();
    String Query = "SELECT * FROM sex_tbl;";
    DataBase_Access.database_access(Query);
    ArrayList<HashMap<String, String>> LIST = DataBase_Access.getData();
    System.out.println(LIST);
*/
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>customer index</title>
        <link rel="stylesheet" href="./css/jQuery_modal.css" />
        <link rel="stylesheet" href="./css/customer_index.css" />
        <link rel="stylesheet" href="./css/Call_tbl.css" />
        <link rel="stylesheet" href="./css/BUTTON_Design_Style_Basic.css" />
        <link rel="stylesheet" href="./css/BUTTON_Design_Style.css" />
        <script src="./js/jquery-3.6.0.min.js"></script>
        <script src="./js/customer_index_return_btn.js"></script>
        <script src="./js/Display_change.js"></script>
        <script src="./js/history_insert.js"></script>
        <script src="./js/jQuery_modal.js"></script>
        <script src="./js/total_fee.js"></script>
    </head>
    <body>
        <div id="fast_div">
            <div class="parent">
                <header>
                    <h1>まさる堂へようこそ</h1>
                </header>
                <main>
                    <div id="main_div">
                        <table id="main_tbl">
                            <tr>
                                <td>
                                    <div class="button19">
                                        <a href="#" id="Start_btn">入室</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="button19">
                                        <a
                                            href="./cash_register/input_number.html"
                                            >退出</a
                                        >
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="button19">
                                        <a
                                            href="./member/member_reg_for_customer.html"
                                            id="mamber_reg"
                                        >
                                            会員登録
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="in_div" class="content">
                        <table class="call_tbl">
                            <tr>
                                <td class="Return_td">
                                    <button class="Return_btn_class">
                                        戻る
                                    </button>
                                </td>
                            </tr>
                        </table>
                        <table id="in_tbl">
                            <tr>
                                <td>
                                    <a
                                        href="#"
                                        class="js_modal_opne"
                                        data-target="modal001"
                                    >
                                        <button class="Hour">1時間</button>
                                    </a>
                                </td>
                                <td>
                                    <a
                                        href="#"
                                        class="js_modal_opne"
                                        data-target="modal003"
                                    >
                                        <button class="Hour">2時間</button>
                                    </a>
                                </td>
                                <td>
                                    <a
                                        href="#"
                                        class="js_modal_opne"
                                        data-target="modal003"
                                    >
                                        <button class="Hour">3時間</button>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <a
                                        href="#"
                                        class="js_modal_opne"
                                        data-target="modal004"
                                    >
                                        <button class="HourFree">
                                            フリータイム
                                        </button>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <a
                                        href="./customer/customer_in_reserve.html"
                                    >
                                        <button id="Reserve">
                                            予約されている方
                                        </button>
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="out_div">
                        <table class="call_tbl">
                            <tr>
                                <td class="Return_td">
                                    <button class="Return_btn_class">
                                        戻る
                                    </button>
                                </td>
                            </tr>
                        </table>
                        <table id="out_tbl">
                            <tr>
                                <td>
                                    <a href="./customer/customer_out_all.html">
                                        <button>全員精算</button>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="./customer/calculate_part.html">
                                        <button>一部精算</button>
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="modal_contents_div">
                        <div id="modal001" class="modal js_modal">
                            <div class="modal__bg js_modal_close"></div>
                            <div class="modal__content">
                                <a href="#" class="js_modal_close">閉じる</a>
                                <div id="Contents_div001">
                                    <p>
                                        1時間当たりの料金は!!!<span
                                            id="price_001"
                                            class="price"
                                            >1000</span
                                        >円!!!です。
                                    </p>
                                    <p>延長は自動にされます。</p>
                                    <form
                                        action="./customer/customer_in.html"
                                        method="get"
                                    >
                                        <table>
                                            <tr>
                                                <td>人数</td>
                                                <td>
                                                    <button
                                                        id="Minus_001"
                                                        class="Minus"
                                                        type="button"
                                                    >
                                                        ―
                                                    </button>
                                                </td>
                                                <td>
                                                    <p id="Num_of_peo_001">1</p>
                                                </td>
                                                <td>
                                                    <button
                                                        id="Plus_001"
                                                        class="Plus"
                                                        type="button"
                                                    >
                                                        ＋
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>計</td>
                                                <td colspan="3">
                                                    <span id="total_fee_001"
                                                        >1000</span
                                                    >円
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <input
                                                        type="submit"
                                                        value="決定"
                                                    />
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="modal002" class="modal js_modal">
                            <div class="modal__bg js_modal_close"></div>
                            <div class="modal__content">
                                <a href="#" class="js_modal_close">閉じる</a>
                                <div id="Contents_div002">
                                    <p>
                                        1時間当たりの料金は!!!<span
                                            id="price_002"
                                            class="price"
                                            >1000</span
                                        >円!!!です。
                                    </p>
                                    <p>延長は自動にされます。</p>
                                    <form
                                        action="./customer/customer_in.html"
                                        method="get"
                                    >
                                        <table>
                                            <tr>
                                                <td>人数</td>
                                                <td>
                                                    <button
                                                        id="Minus_002"
                                                        class="Minus"
                                                        type="button"
                                                    >
                                                        ―
                                                    </button>
                                                </td>
                                                <td>
                                                    <p id="Num_of_peo_002">1</p>
                                                </td>
                                                <td>
                                                    <button
                                                        id="Plus_002"
                                                        class="Plus"
                                                        type="button"
                                                    >
                                                        ＋
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>計</td>
                                                <td colspan="3">
                                                    <span id="total_fee_002"
                                                        >2000</span
                                                    >円
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <input
                                                        type="submit"
                                                        value="決定"
                                                    />
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="modal003" class="modal js_modal">
                            <div class="modal__bg js_modal_close"></div>
                            <div class="modal__content">
                                <a href="#" class="js_modal_close">閉じる</a>
                                <div id="Contents_div003">
                                    <p>
                                        1時間当たりの料金は!!!<span
                                            id="price_003"
                                            class="price"
                                            >1000</span
                                        >円!!!です。
                                    </p>
                                    <p>延長は自動にされます。</p>
                                    <form
                                        action="./customer/customer_in.html"
                                        method="get"
                                    >
                                        <table>
                                            <tr>
                                                <td>人数</td>
                                                <td>
                                                    <button
                                                        id="Minus_003"
                                                        class="Minus"
                                                        type="button"
                                                    >
                                                        ―
                                                    </button>
                                                </td>
                                                <td>
                                                    <p id="Num_of_peo_003">1</p>
                                                </td>
                                                <td>
                                                    <button
                                                        id="Plus_003"
                                                        class="Plus"
                                                        type="button"
                                                    >
                                                        ＋
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>計</td>
                                                <td colspan="3">
                                                    <span id="total_fee_003"
                                                        >3000</span
                                                    >円
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <input
                                                        type="submit"
                                                        value="決定"
                                                    />
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="modal004" class="modal js_modal">
                            <div class="modal__bg js_modal_close"></div>
                            <div class="modal__content">
                                <a href="#" class="js_modal_close">閉じる</a>
                                <div id="Contents_divFree">
                                    <p>
                                        1時間当たりの料金は!!!<span
                                            id="price_Free"
                                            class="price"
                                            >2500</span
                                        >円!!!です。
                                    </p>
                                    <p>延長は自動にされます。</p>
                                    <form
                                        action="./customer/customer_in.html"
                                        method="get"
                                    >
                                        <table>
                                            <tr>
                                                <td>人数</td>
                                                <td>
                                                    <button
                                                        id="Minus_Free"
                                                        class="Minus"
                                                        type="button"
                                                    >
                                                        ―
                                                    </button>
                                                </td>
                                                <td>
                                                    <p id="Num_of_peo_Free">
                                                        1
                                                    </p>
                                                </td>
                                                <td>
                                                    <button
                                                        id="Plus_Free"
                                                        class="Plus"
                                                        type="button"
                                                    >
                                                        ＋
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>計</td>
                                                <td colspan="3">
                                                    <span id="total_fee_Free"
                                                        >3000</span
                                                    >円
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">
                                                    <input
                                                        type="submit"
                                                        value="決定"
                                                    />
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div id="modal005" class="modal js_modal">
                            <div class="modal__bg js_modal_close"></div>
                            <div class="modal__content">
                                <a href="#" class="js_modal_close">閉じる</a>
                                <p>
                                    ただいま店員がまいりますしばらくお待ちください。
                                </p>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <footer>copyright&copy; All free creaters Ltd. 2021</footer>
    </body>
</html>
