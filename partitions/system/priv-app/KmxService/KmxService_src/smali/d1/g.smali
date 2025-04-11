.class public final Ld1/g;
.super Ld1/r;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ld1/g;->a:I

    iput-object p2, p0, Ld1/g;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld1/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ld1/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ld1/q;)V
    .locals 3

    iget v0, p0, Ld1/g;->a:I

    iget-object v1, p0, Ld1/g;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Ll/b;

    iget-object v0, p0, Ld1/g;->c:Ljava/lang/Object;

    check-cast v0, Ld1/s;

    iget-object v0, v0, Ld1/s;->b:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ld1/q;->v(Ld1/p;)V

    return-void

    :pswitch_1
    check-cast v1, Landroid/view/View;

    sget-object v0, Ld1/x;->a:Landroidx/appcompat/widget/c4;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    invoke-virtual {p1, p0}, Ld1/q;->v(Ld1/p;)V

    return-void

    :goto_0
    check-cast v1, Ld1/q;

    invoke-virtual {v1}, Ld1/q;->y()V

    invoke-virtual {p1, p0}, Ld1/q;->v(Ld1/p;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
