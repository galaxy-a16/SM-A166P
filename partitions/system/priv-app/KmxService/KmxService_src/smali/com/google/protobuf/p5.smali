.class public final Lcom/google/protobuf/p5;
.super Lcom/google/protobuf/v5;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/protobuf/n8;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/n8;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/p5;->b:Lcom/google/protobuf/n8;

    iput p2, p0, Lcom/google/protobuf/p5;->c:I

    invoke-direct {p0}, Lcom/google/protobuf/v5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/n3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/p5;->b:Lcom/google/protobuf/n8;

    invoke-interface {v0}, Lcom/google/protobuf/t8;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/protobuf/h3;->h:[Lcom/google/protobuf/n3;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/google/protobuf/p5;->c:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/n3;

    return-object p0
.end method
