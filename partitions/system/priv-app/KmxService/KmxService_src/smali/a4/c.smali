.class public final La4/c;
.super La1/c;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/material/carousel/CarouselLayoutManager;I)V
    .locals 0

    iput p3, p0, La4/c;->b:I

    iput-object p2, p0, La4/c;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-direct {p0, p1}, La1/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()I
    .locals 1

    iget v0, p0, La4/c;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, La4/c;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()I
    .locals 1

    iget v0, p0, La4/c;->b:I

    iget-object p0, p0, La4/c;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :goto_0
    iget p0, p0, Landroidx/recyclerview/widget/u0;->n:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 1

    iget v0, p0, La4/c;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :goto_0
    iget-object p0, p0, La4/c;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
