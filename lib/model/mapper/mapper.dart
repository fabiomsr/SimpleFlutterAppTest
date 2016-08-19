abstract class Mapper<D, M>{
  M toModel(D data);
  D toData(M model);
}
