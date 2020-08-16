package security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.crud.UserRepo;
import com.pojos.Users;

@Service
public class MyUserDetailServices implements UserDetailsService {

	@Autowired
	 private UserRepo repo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	
		 Users user = repo.findByUsername(username);
		 
		if(user==null)
			throw new UsernameNotFoundException("User 4004");
		
		return new UserPrincipal(user);
	}

}
