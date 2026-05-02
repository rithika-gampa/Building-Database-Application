package com;

import com.entity.Author;
import com.repository.AuthorRepository;
import com.service.AuthorService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import java.util.Optional;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class AuthorServiceTest {

    @Mock
    private AuthorRepository authorRepository;

    @InjectMocks
    private AuthorService authorService;

    @Test
    public void testSaveAuthor() {
        Author author = new Author();
        author.setName("Test Author");

        when(authorRepository.save(author)).thenReturn(author);
        Author savedAuthor = authorService.saveAuthor(author);

        assertNotNull(savedAuthor);
        assertEquals("Test Author", savedAuthor.getName());
        verify(authorRepository, times(1)).save(author);
    }

    @Test
    public void testGetAuthorById_Success() {
        Author author = new Author();
        author.setAuthorId(1L);
        author.setName("Test");

        when(authorRepository.findById(1L)).thenReturn(Optional.of(author));
        Author found = authorService.getAuthorById(1L);

        assertEquals("Test", found.getName());
    }
}