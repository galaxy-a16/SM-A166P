.class public final Lcom/google/protobuf/u9;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/protobuf/v9;


# direct methods
.method public synthetic constructor <init>(Lcom/google/protobuf/v9;I)V
    .locals 0

    iput p2, p0, Lcom/google/protobuf/u9;->a:I

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/u9;->b:Lcom/google/protobuf/v9;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/u9;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :pswitch_1
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :goto_0
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/u9;->a:I

    iget-object p0, p0, Lcom/google/protobuf/u9;->b:Lcom/google/protobuf/v9;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/v9;->n(IZ)Lcom/google/protobuf/c;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v9;->k(I)Lcom/google/protobuf/a;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v9;->p(I)Lcom/google/protobuf/t8;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/u9;->a:I

    iget-object p0, p0, Lcom/google/protobuf/u9;->b:Lcom/google/protobuf/v9;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->m()I

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->m()I

    move-result p0

    return p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/v9;->m()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
