package com.kh.MNB.common;

import com.kh.MNB.board.model.vo.PageInfo;

public class Pagination {
   // PageInfo 媛앹껜瑜� 由ы꽩�븯�뒗 static 硫붿냼�뱶 異붽�
   public static PageInfo getPageInfo(int currentPage, int listCount) {
      
      // �럹�씠吏� �젙蹂대�� �떞�븘以� PageInfo 李몄“蹂��닔 �꽑�뼵
      PageInfo pi = null;
      
      // currentPage�� listCount媛� �꽆�뼱�삩 �긽�깭�씠湲� �븣臾몄뿉 
      // �럹�씠吏� 泥섎━�뿉 �븘�슂�븳 �굹癒몄� 蹂��닔留� �꽑�뼵�븿
      
      int pageLimit = 10;   // �븳 �럹�씠吏��뿉�꽌 蹂댁뿬吏� �럹�씠吏� �닔 
      int maxPage;      // �쟾泥� �럹�씠吏� �닔 以� 媛��옣 留덉�留� �럹�씠吏�
      int startPage;      // �쁽�옱 �럹�씠吏��뿉�꽌 蹂댁뿬吏� �럹�씠吏� 踰꾪듉�쓽 �떆�옉 �럹�씠吏�
      int endPage;      // �쁽�옱 �럹�씠吏��뿉�꽌 蹂댁뿬�맆 �럹�씠吏� 踰꾪듉�쓽 �걹 �럹�씠吏�
      
      int boardLimit = 10; // �븳 �럹�씠吏��뿉 蹂댁뿬吏� 寃뚯떆湲� 媛��닔
      
      // * maxPage - 珥� �럹�씠吏� �닔
      // 紐⑸줉 �닔媛� 123媛쒖씠硫� �럹�씠吏� �닔�뒗 13�럹�씠吏��엫
      // 吏쒗닾由� 紐⑸줉�씠 理쒖냼 1媛쒖씪 �븣, 1page濡� 泥섎━�븯湲� �쐞�빐 0.9瑜� �뜑�븿
      maxPage = (int)((double)listCount / boardLimit + 0.9);
      
      // * startPage - �쁽�옱 �럹�씠吏��뿉 蹂댁뿬吏� �떆�옉 �럹�씠吏� �닔 
      //   �븘�옒履쎌뿉 �럹�씠吏� �닔媛� 10媛쒖뵫 蹂댁뿬吏�寃� �븷 寃쎌슦
      //   1, 11, 21, 31, .....
      startPage = (((int)((double)currentPage / pageLimit + 0.9)) - 1) * pageLimit + 1;
      
      // * endPage - �쁽�옱 �럹�씠吏��뿉�꽌 蹂댁뿬吏� 留덉�留� �럹�씠吏� �닔
      //   �븘�옒履쎌뿉 �럹�씠吏� �닔媛� 10媛쒖뵫 蹂댁뿬吏�寃� �븷 寃쎌슦
      //   10, 20, 30, 40, .....
      endPage = startPage + pageLimit - 1;
      
      // �븯吏�留� 留덉�留� �럹�씠吏� �닔媛� 珥� �럹�씠吏� �닔蹂대떎 �겢 寃쎌슦
      // maxPage媛� 13�럹�씠吏�怨� endPage媛� 20�럹�씠吏��씪 寃쎌슦
      if(maxPage < endPage) {
         endPage = maxPage;
      }
      
      pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
      
      return pi;
   }
}