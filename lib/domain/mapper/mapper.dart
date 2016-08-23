abstract class Mapper<M, D>{
  M toModel(D data);
  D toData(M model);
}
