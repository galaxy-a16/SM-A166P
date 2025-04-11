.class public final Lcom/google/protobuf/z8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/z9;


# instance fields
.field public final a:Lcom/google/protobuf/r8;

.field public final b:Lcom/google/protobuf/kb;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/kb;Lcom/google/protobuf/u4;Lcom/google/protobuf/r8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/z8;->b:Lcom/google/protobuf/kb;

    invoke-virtual {p2, p3}, Lcom/google/protobuf/u4;->b(Lcom/google/protobuf/r8;)Z

    iput-object p3, p0, Lcom/google/protobuf/z8;->a:Lcom/google/protobuf/r8;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    sget-object p2, Lcom/google/protobuf/aa;->a:Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/protobuf/z8;->b:Lcom/google/protobuf/kb;

    check-cast p0, Lcom/google/protobuf/qb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/z8;->b:Lcom/google/protobuf/kb;

    check-cast p0, Lcom/google/protobuf/qb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/Object;Lcom/google/protobuf/t9;Lcom/google/protobuf/t4;)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/z8;->b:Lcom/google/protobuf/kb;

    check-cast p0, Lcom/google/protobuf/qb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/z8;->b:Lcom/google/protobuf/kb;

    check-cast p0, Lcom/google/protobuf/qb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/z8;->a:Lcom/google/protobuf/r8;

    invoke-interface {p0}, Lcom/google/protobuf/r8;->newBuilderForType()Lcom/google/protobuf/q8;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/q8;->buildPartial()Lcom/google/protobuf/r8;

    move-result-object p0

    return-object p0
.end method
