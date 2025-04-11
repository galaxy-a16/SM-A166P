.class public abstract Lcom/google/protobuf/h4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/h3;

.field public static final b:Lcom/google/protobuf/q6;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "\n\u001bgoogle/protobuf/empty.proto\u0012\u000fgoogle.protobuf\"\u0007\n\u0005EmptyB}\n\u0013com.google.protobufB\nEmptyProtoP\u0001Z.google.golang.org/protobuf/types/known/emptypb\u00f8\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/p3;

    invoke-static {v0, v2}, Lcom/google/protobuf/p3;->i([Ljava/lang/String;[Lcom/google/protobuf/p3;)Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/google/protobuf/h4;->a:Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/q6;

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/h4;->b:Lcom/google/protobuf/q6;

    return-void
.end method
