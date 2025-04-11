.class public abstract Lcom/google/protobuf/sa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/h3;

.field public static final b:Lcom/google/protobuf/q6;

.field public static final c:Lcom/google/protobuf/h3;

.field public static final d:Lcom/google/protobuf/h3;

.field public static final e:Lcom/google/protobuf/q6;

.field public static final f:Lcom/google/protobuf/h3;

.field public static final g:Lcom/google/protobuf/q6;

.field public static final h:Lcom/google/protobuf/p3;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "\n\u001cgoogle/protobuf/struct.proto\u0012\u000fgoogle.protobuf\"\u0084\u0001\n\u0006Struct\u00123\n\u0006fields\u0018\u0001 \u0003(\u000b2#.google.protobuf.Struct.FieldsEntry\u001aE\n\u000bFieldsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012%\n\u0005value\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.Value:\u00028\u0001\"\u00ea\u0001\n\u0005Value\u00120\n\nnull_value\u0018\u0001 \u0001(\u000e2\u001a.google.protobuf.NullValueH\u0000\u0012\u0016\n\u000cnumber_value\u0018\u0002 \u0001(\u0001H\u0000\u0012\u0016\n\u000cstring_value\u0018\u0003 \u0001(\tH\u0000\u0012\u0014\n\nbool_value\u0018\u0004 \u0001(\u0008H\u0000\u0012/\n\u000cstruct_value\u0018\u0005 \u0001(\u000b2\u0017.google.protobuf.StructH\u0000\u00120\n\nlist_value\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.ListValueH\u0000B\u0006\n\u0004kind\"3\n\tListValue\u0012&\n\u0006values\u0018\u0001 \u0003(\u000b2\u0016.google.protobuf.Value*\u001b\n\tNullValue\u0012\u000e\n\nNULL_VALUE\u0010\u0000B\u007f\n\u0013com.google.protobufB\u000bStructProtoP\u0001Z/google.golang.org/protobuf/types/known/structpb\u00f8\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/p3;

    invoke-static {v0, v2}, Lcom/google/protobuf/p3;->i([Ljava/lang/String;[Lcom/google/protobuf/p3;)Lcom/google/protobuf/p3;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/sa;->h:Lcom/google/protobuf/p3;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3;

    sput-object v2, Lcom/google/protobuf/sa;->a:Lcom/google/protobuf/h3;

    new-instance v3, Lcom/google/protobuf/q6;

    const-string v4, "Fields"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/protobuf/sa;->b:Lcom/google/protobuf/q6;

    invoke-virtual {v2}, Lcom/google/protobuf/h3;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/sa;->c:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/protobuf/h6;

    iget-object v1, v1, Lcom/google/protobuf/h3;->i:[Lcom/google/protobuf/s3;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lo2/i;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/sa;->d:Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/q6;

    const-string v3, "NullValue"

    const-string v4, "NumberValue"

    const-string v5, "StringValue"

    const-string v6, "BoolValue"

    const-string v7, "StructValue"

    const-string v8, "ListValue"

    const-string v9, "Kind"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/sa;->e:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/google/protobuf/sa;->f:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Values"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/sa;->g:Lcom/google/protobuf/q6;

    return-void
.end method
