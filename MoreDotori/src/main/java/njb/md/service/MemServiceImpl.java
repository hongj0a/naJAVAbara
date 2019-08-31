package njb.md.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import njb.md.domain.Mem;
import njb.md.mapper.MemMapper;

@Service
@AllArgsConstructor
public class MemServiceImpl implements MemService{
	
	@Autowired
	private MemMapper mapper;
	
	@Override
	public List<Mem> getList(){
		return mapper.getList();
	}
	
	@Override
	public void normalUser(List<String> idList){
		for (String id : idList) {
			mapper.normalUser(id);
		}
	}
}
