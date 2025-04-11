.class public final Lh1/e;
.super Lh1/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lh1/e;->a:I

    iput-object p1, p0, Lh1/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lh1/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lh1/e;->a:I

    iget-object p0, p0, Lh1/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Z

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Lh1/d;

    iput-boolean v0, p0, Lh1/d;->l:Z

    return-void

    :goto_0
    check-cast p0, Lh1/k;

    invoke-virtual {p0}, Lh1/k;->r()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
