.class public abstract Lcom/google/protobuf/ec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/h3;

.field public static final b:Lcom/google/protobuf/q6;

.field public static final c:Lcom/google/protobuf/h3;

.field public static final d:Lcom/google/protobuf/q6;

.field public static final e:Lcom/google/protobuf/h3;

.field public static final f:Lcom/google/protobuf/q6;

.field public static final g:Lcom/google/protobuf/h3;

.field public static final h:Lcom/google/protobuf/q6;

.field public static final i:Lcom/google/protobuf/h3;

.field public static final j:Lcom/google/protobuf/q6;

.field public static final k:Lcom/google/protobuf/h3;

.field public static final l:Lcom/google/protobuf/q6;

.field public static final m:Lcom/google/protobuf/h3;

.field public static final n:Lcom/google/protobuf/q6;

.field public static final o:Lcom/google/protobuf/h3;

.field public static final p:Lcom/google/protobuf/q6;

.field public static final q:Lcom/google/protobuf/h3;

.field public static final r:Lcom/google/protobuf/q6;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "\n\u001egoogle/protobuf/wrappers.proto\u0012\u000fgoogle.protobuf\"\u001c\n\u000bDoubleValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0001\"\u001b\n\nFloatValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0002\"\u001b\n\nInt64Value\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0003\"\u001c\n\u000bUInt64Value\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0004\"\u001b\n\nInt32Value\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0005\"\u001c\n\u000bUInt32Value\u0012\r\n\u0005value\u0018\u0001 \u0001(\r\"\u001a\n\tBoolValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\u0008\"\u001c\n\u000bStringValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\t\"\u001b\n\nBytesValue\u0012\r\n\u0005value\u0018\u0001 \u0001(\u000cB\u0083\u0001\n\u0013com.google.protobufB\rWrappersProtoP\u0001Z1google.golang.org/protobuf/types/known/wrapperspb\u00f8\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/p3;

    invoke-static {v0, v2}, Lcom/google/protobuf/p3;->i([Ljava/lang/String;[Lcom/google/protobuf/p3;)Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/ec;->a:Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/q6;

    const-string v3, "Value"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/ec;->b:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/ec;->c:Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/q6;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/ec;->d:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/ec;->e:Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/q6;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/ec;->f:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/ec;->g:Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/q6;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/ec;->h:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/ec;->i:Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/q6;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/ec;->j:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/ec;->k:Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/q6;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/ec;->l:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/ec;->m:Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/q6;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/ec;->n:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    sput-object v1, Lcom/google/protobuf/ec;->o:Lcom/google/protobuf/h3;

    new-instance v2, Lcom/google/protobuf/q6;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/protobuf/ec;->p:Lcom/google/protobuf/q6;

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/google/protobuf/ec;->q:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/ec;->r:Lcom/google/protobuf/q6;

    return-void
.end method
