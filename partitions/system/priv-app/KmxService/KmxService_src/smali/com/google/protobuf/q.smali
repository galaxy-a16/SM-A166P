.class public abstract Lcom/google/protobuf/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/h3;

.field public static final b:Lcom/google/protobuf/q6;

.field public static final c:Lcom/google/protobuf/h3;

.field public static final d:Lcom/google/protobuf/q6;

.field public static final e:Lcom/google/protobuf/h3;

.field public static final f:Lcom/google/protobuf/q6;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const-string v0, "\n\u0019google/protobuf/api.proto\u0012\u000fgoogle.protobuf\u001a$google/protobuf/source_context.proto\u001a\u001agoogle/protobuf/type.proto\"\u0081\u0002\n\u0003Api\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012(\n\u0007methods\u0018\u0002 \u0003(\u000b2\u0017.google.protobuf.Method\u0012(\n\u0007options\u0018\u0003 \u0003(\u000b2\u0017.google.protobuf.Option\u0012\u000f\n\u0007version\u0018\u0004 \u0001(\t\u00126\n\u000esource_context\u0018\u0005 \u0001(\u000b2\u001e.google.protobuf.SourceContext\u0012&\n\u0006mixins\u0018\u0006 \u0003(\u000b2\u0016.google.protobuf.Mixin\u0012\'\n\u0006syntax\u0018\u0007 \u0001(\u000e2\u0017.google.protobuf.Syntax\"\u00d5\u0001\n\u0006Method\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010request_type_url\u0018\u0002 \u0001(\t\u0012\u0019\n\u0011request_streaming\u0018\u0003 \u0001(\u0008\u0012\u0019\n\u0011response_type_url\u0018\u0004 \u0001(\t\u0012\u001a\n\u0012response_streaming\u0018\u0005 \u0001(\u0008\u0012(\n\u0007options\u0018\u0006 \u0003(\u000b2\u0017.google.protobuf.Option\u0012\'\n\u0006syntax\u0018\u0007 \u0001(\u000e2\u0017.google.protobuf.Syntax\"#\n\u0005Mixin\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004root\u0018\u0002 \u0001(\tBv\n\u0013com.google.protobufB\u0008ApiProtoP\u0001Z,google.golang.org/protobuf/types/known/apipb\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/google/protobuf/p3;

    sget-object v3, Lcom/google/protobuf/la;->c:Lcom/google/protobuf/p3;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/protobuf/db;->k:Lcom/google/protobuf/p3;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/google/protobuf/p3;->i([Ljava/lang/String;[Lcom/google/protobuf/p3;)Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3;

    sput-object v2, Lcom/google/protobuf/q;->a:Lcom/google/protobuf/h3;

    new-instance v3, Lcom/google/protobuf/q6;

    const-string v6, "Name"

    const-string v7, "Methods"

    const-string v8, "Options"

    const-string v9, "Version"

    const-string v10, "SourceContext"

    const-string v11, "Mixins"

    const-string v12, "Syntax"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/protobuf/q;->b:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3;

    sput-object v2, Lcom/google/protobuf/q;->c:Lcom/google/protobuf/h3;

    new-instance v3, Lcom/google/protobuf/q6;

    const-string v4, "Name"

    const-string v5, "RequestTypeUrl"

    const-string v6, "RequestStreaming"

    const-string v7, "ResponseTypeUrl"

    const-string v8, "ResponseStreaming"

    const-string v9, "Options"

    const-string v10, "Syntax"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/protobuf/q;->d:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/google/protobuf/q;->e:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Name"

    const-string v3, "Root"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/q;->f:Lcom/google/protobuf/q6;

    return-void
.end method
