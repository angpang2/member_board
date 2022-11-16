<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-16
  Time: 오후 2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3.0">
  <link rel="stylesheet" href="../../resources/css/ex.css">
  <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
  <title>membership</title>

</head>

<body>

<div class="header" w3-include-html="header.html"></div>

<article class="login">

  <h2>회원 로그인 / <span style="opacity:0.3;">비회원 주문조회</span></h2>

  <form>

    <input type="text" placeholder="아이디 입력">
    <input type="password" placeholder="비밀번호 입력">

    <section>
      <h5><i class="fas fa-lock"></i> 보안접속</h5>
      <div class="">
        <input type="checkbox" id="exampleCheck1" style="width
          :30px;">
        <label for="exampleCheck1">아이디 저장</label>
      </div>
      <h5><a href="#">아이디/비밀번호 찾기</a></h5>
    </section>

    <div>
      <button type="submit" name="button">login</button>
    </div>

    <h4><a href="#">회원가입하기</a></h4>

    <section>
      <h4>sns 로그인</h4>
      <div class="">
        <button type="submit" class="lg-naver">
          <img src="https://i2.wp.com/bwithmag.com/wp-content/uploads/2018/06/2%E1%84%82%E1%85%A6%E1%84%8B%E1%85%B5%E1%84%87%E1%85%A5-N-%E1%84%85%E1%85%A9%E1%84%80%E1%85%A9.jpg?fit=526%2C527">
        </button>

        <button type="submit" class="lg-kakao">
          <img src="https://i.pinimg.com/originals/70/e8/ed/70e8edb8f187700949ab96830a3af4af.png">
        </button>

        <button type="submit" class="lg-facebook">
          <img src="https://www.scu.edu/media/offices/umc/images/Facebook_256px.png">
        </button>
      </div>

    </section>


  </form>

</article>

<div class="header" w3-include-html="header.html"></div>


<article class="login2">

  <h2><span style="opacity:0.3;">회원 로그인</span> / 비회원 주문조회</h2>

  <form>

    <input type="text" placeholder="주문번호 입력">
    <input type="password" placeholder="전화번호 입력">

    <section>
      <h5><i class="fas fa-lock"></i> 보안접속</h5>

    </section>

    <div>
      <button type="submit" name="button">주문조회 하기</button>
    </div>

    <h4><a href="#">회원가입하기</a></h4>

    <section>
      <h4>sns 로그인</h4>
      <div class="">
        <button type="submit" class="lg-naver">
          <img src="https://i2.wp.com/bwithmag.com/wp-content/uploads/2018/06/2%E1%84%82%E1%85%A6%E1%84%8B%E1%85%B5%E1%84%87%E1%85%A5-N-%E1%84%85%E1%85%A9%E1%84%80%E1%85%A9.jpg?fit=526%2C527">
        </button>

        <button type="submit" class="lg-kakao">
          <img src="https://i.pinimg.com/originals/70/e8/ed/70e8edb8f187700949ab96830a3af4af.png">
        </button>

        <button type="submit" class="lg-facebook">
          <img src="https://www.scu.edu/media/offices/umc/images/Facebook_256px.png">
        </button>
      </div>

    </section>


  </form>

</article>


<div class="header" w3-include-html="header.html"></div>



<article class="ids">
  <h2>아이디 찾기 / <span style="opacity:0.3;">비밀번호 찾기</span></h2>
  <input type="text" placeholder="이름 입력">
  <input type="email" placeholder="이메일 입력">

  <section>
    <h5><i class="fas fa-lock"></i> 보안접속</h5>

    <div class="">
      <input type="radio" id="email" style="width
        :30px;">
      <label for="email">이메일</label>

      <input type="radio" id="tel" style="width
        :30px;">
      <label for="tel">휴대폰</label>
    </div>
  </section>

  <button type="submit" name="button">확인</button>

</article>



<div class="header" w3-include-html="header.html"></div>



<article class="pws">
  <h2><span style="opacity:0.3;">아이디 찾기</span> / 비밀번호 찾기</h2>
  <input type="text" placeholder="아이디 입력">
  <input type="text" placeholder="이름 입력">
  <input type="email" placeholder="이메일 입력">

  <section>
    <h5><i class="fas fa-lock"></i> 보안접속</h5>
    <div class="">
      <input type="radio" id="email" style="width
        :20px;">
      <label for="email">이메일</label>
      <input type="radio" id="tel" style="width
        :20px;">
      <label for="tel">휴대폰</label>
    </div>

  </section>

  <button type="submit" name="button">확인</button>
</article>



<div class="header" w3-include-html="header.html"></div>


<article class="join">
  <h1>회원가입</h1>

  <h2>회원가입을 환영합니다</h2>
  <p>회원으로 가입하시면 다양한 혜택과<br> 서비스를 이용하실 수 있습니다.</p>

  <section>
    <button type="button" name="button">가입하기(만 14세 이상)</button>

  </section>

  <section>
    <h4>sns 로그인</h4>
    <div class="">

      <img src="https://i2.wp.com/bwithmag.com/wp-content/uploads/2018/06/2%E1%84%82%E1%85%A6%E1%84%8B%E1%85%B5%E1%84%87%E1%85%A5-N-%E1%84%85%E1%85%A9%E1%84%80%E1%85%A9.jpg?fit=526%2C527">



      <img src="https://i.pinimg.com/originals/70/e8/ed/70e8edb8f187700949ab96830a3af4af.png">



      <img src="https://www.scu.edu/media/offices/umc/images/Facebook_256px.png">
      </button>
    </div>

  </section>
</article>

<div class="header" w3-include-html="header.html"></div>

<article class="join1">
  <h2>약관 동의</h2>
  <section>
    <h4>1.약관동의</h4>
    <h4>▸</h4>
    <h4>2.회원정보입력</h4>
    <h4>▸</h4>
    <h4>3.가입완료</h4>
  </section>

  <section>
    <div class="">
      <input type="checkbox" id="agree">
      <label for="agree">이용약관 / 개인벙보 수집 · 이용에 모두 동의합니다. </label>
    </div>

    <div class="">
      <input type="checkbox" id="agree1">
      <label for="agree1">이용약관 동의(필수)</label>
    </div>

    <div class="">
      <input type="checkbox" id="agree2">
      <label for="agree2">개인 정보 수집 · 이용에 모두 동의합니다. </label>
    </div>
  </section>

  <section>
    <h5>회원선택</h5>
    <div class="">
      <input type="radio" id="individual" style="width
        :20px;">
      <label for="individual">개인회원</label>
      <input type="radio" id="entrepreneur" style="width
        :20px;">
      <label for="entrepreneur">사업자 회원</label>
    </div>
  </section>

  <section>
    <button type="button">이전</button>
    <button type="button" style="background:black;color:white;">다음</button>
  </section>

  <section>
    <h4>sns 로그인</h4>
    <div class="">
      <button type="submit" class="lg-naver">
        <img src="https://i2.wp.com/bwithmag.com/wp-content/uploads/2018/06/2%E1%84%82%E1%85%A6%E1%84%8B%E1%85%B5%E1%84%87%E1%85%A5-N-%E1%84%85%E1%85%A9%E1%84%80%E1%85%A9.jpg?fit=526%2C527">
      </button>

      <button type="submit" class="lg-kakao">
        <img src="https://i.pinimg.com/originals/70/e8/ed/70e8edb8f187700949ab96830a3af4af.png">
      </button>

      <button type="submit" class="lg-facebook">
        <img src="https://www.scu.edu/media/offices/umc/images/Facebook_256px.png">
      </button>
    </div>

  </section>

</article>

<div class="header" w3-include-html="header.html"></div>


<article class="join2">
  <h2>회원정보 입력</h2>
  <section>
    <h4>1.약관동의</h4>
    <h4>▸</h4>
    <h4>2.회원정보입력</h4>
    <h4>▸</h4>
    <h4>3.가입완료</h4>
  </section>

  <h2><i class="fas fa-check"></i> 기본정보입력 (필수)</h2>
  <section>
    <input type="text" placeholder="성명 입력">
  </section>

  <section>
    <div>
      <input type="text" placeholder="아이디(4-16자의 영문,숫자만 사용)">
      <button type="button">중복확인</button>
    </div>
  </section>

  <section>
    <input type="text" placeholder="비밀번호(8-16자 이내 영문,숫자,특수문자를 조합해 입력)">
  </section>

  <section>
    <input type="text" placeholder="비밀번호 확인">
  </section>

  <section>
    <div>
      <input type="text" placeholder="이메일">
      <h5>@</h5>
      <input type="text">
      <select>
        <option>
          직접입력
        </option>
        <option>
          naver.com
        </option>
        <option>
          nate.com
        </option>
        <option>
          daum.com
        </option>
        <option>
          hanmail.com
        </option>
        <option>
          gmail.com
        </option>
        <option>
          yahoo.com
        </option>
        <option>
          paran.com
        </option>
        <option>
          empas.com
        </option>
      </select>
    </div>
  </section>

  <section>
    <input type="text" placeholder="전화번호 입력">
  </section>

  <div>
    <div>
      <input type="checkbox" id="ema">
      <label for="ema">이메일 정보 수신</label>

      <input type="checkbox" id="sms">
      <label for="sms">SMS/알림톡 수신</label>
    </div>

    <a href="#">마케팅 활용동의 안내</a>
  </div>

</article>

<hr>

<article class="join22">
  <div>
    <h3><i class="fas fa-check"></i> 선택항목입력(선택)</h3>
    <h5>선택 항목 입력 시 10% 할인 쿠폰이 발급됩니다.</h5>
  </div>

  <div>
    <h4>결혼여부</h4>
    <input type="radio" name="join2-2" id="nmarrie">
    <label for="nmarrie">미혼</label>
    <input type="radio" name="join2-2" id="marrie">
    <label for="marrie">기혼</label>
  </div>

  <section>
    <h4>키</h4>
    <select>
      <option>
        ::선택::<i class="far fa-angle-down"></i>
      </option>
      <option>
        140
      </option>
      <option>
        150
      </option>
      <option>
        160
      </option>
      <option>
        170
      </option>
      <option>
        180
      </option>
      <option>
        190
      </option>
    </select>
  </section>

  <section>
    <h4>관심매장</h4>
    <select>
      <option>
        ::선택::<i class="far fa-angle-down"></i>
      </option>
      <option>
        강남점
      </option>
      <option>
        노원점
      </option>
      <option>
        동대문구점
      </option>
      <option>
        미아점
      </option>
      <option>
        벽진점
      </option>
      <option>
        성신여대입구점
      </option>
    </select>
  </section>

  <div>
    <button type="button">이전</button>
    <button type="button" style="background:black;color:white;">다음</button>
  </div>
</article>


<div class="header" w3-include-html="header.html"></div>


<article class="complite">
  <h2>회원가입 완료</h2>

  <section>
    <h4>1.약관동의</h4>
    <h4>▸</h4>
    <h4>2.회원정보입력</h4>
    <h4>▸</h4>
    <h4>3.가입완료</h4>
  </section>

  <section>
    <img src="https://cdn.icon-icons.com/icons2/1184/PNG/512/1490134498-checkmark_82222.png">

    <h3>OOO님,회원가입이 완료되었습니다.</h3>

    <div>
      <h5>GIORDANO, concept1에서 제공하는 다양한
        상품과 <br>이벤트를 만나보세요.</h5>
    </div>


    <button type="button">메인으로</button>

  </section>
</article>

<div class="header" w3-include-html="header.html"></div>

<article class="bye">
  <h2>회원 탈퇴</h2>
  <p>탈퇴하실 경우 구매내역 확인은 물론 로그인 후 가능한 모든 기능은 사용하실 수 없습니다.
    탈퇴하신 후에 회원 정보의 복구는 불가능하며, 보유하신 쿠폰이나 적립금도 모두 무효화됩니다.</p>
  <section>
    <input type="text" placeholder="비밀번호 입력">
  </section>

  <div>
    <h5>탈퇴사유</h5>
    <section>
      <input type="radio" name="withdraw" id="reason1">
      <label for="reason1">이유 없음</label>

      <input type="radio" name="withdraw" id="reason2">
      <label for="reason2">상품/서비스 불만족</label>

      <input type="radio" name="withdraw" id="reason3">
      <label for="reason3">더 구매의사 없음</label>
      <br>
      <input type="radio" name="withdraw" id="reason4">
      <label for="reason4">기타</label>
    </section>

    <textarea name="name" rows="8" placeholder="탈퇴사유"></textarea>
  </div>

  <button>취소</button><button>확인</button>
</article>

<div class="header" w3-include-html="header.html"></div>


<article class="last">

  <h2>탈퇴 완료</h2>

  <img src="https://cdn.icon-icons.com/icons2/1184/PNG/512/1490134498-checkmark_82222.png">

  <h3>OOO님,탈퇴가 완료되었습니다.</h3>

  <div>
    <h5>이용해주셔서 감사합니다.</h5>
  </div>

  <section>
    <button>메인으로</button>
  </section>
</article>

<div class="header" w3-include-html="header.html"></div>

</body>

</html>
