package com.gf;

import com.gf.entity.Article;
import com.gf.entity.Book;
import com.gf.entity.PositionES;
import com.gf.repository.BookRepository;
import com.gf.repository.PositionRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringbootElasticsearchApplicationTests {

	@Autowired
	BookRepository bookRepository;

	@Autowired
    private PositionRepository positionRepository;

	@Test
	public void createIndex2(){
		Book book = new Book();
		book.setId(1);
		book.setBookName("西游记");
		book.setAuthor( "吴承恩" );
		bookRepository.index( book );
	}

	@Test
	public void useFind() {
//		List<Book> list = bookRepository.findByBookNameLike( "游" );
        List<PositionES> positionESList = positionRepository.findByPositions("工程师");
		for (PositionES positionES : positionESList) {
			System.out.println(positionES.getPositions());
		}

	}

}
