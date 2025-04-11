.class public final Lcom/google/protobuf/w4;
.super Lcom/google/protobuf/u4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/u4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/t4;Lcom/google/protobuf/r8;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/protobuf/s4;

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/s4;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p1, Lcom/google/protobuf/t4;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/protobuf/r8;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
