.class public final Landroidx/core/view/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/core/view/b1;->a:I

    iput-object p1, p0, Landroidx/core/view/b1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Landroidx/core/view/b1;->a:I

    iget-object p0, p0, Landroidx/core/view/b1;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lvb/c;

    const-string v0, "block"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/h;

    invoke-direct {v0}, Lkotlin/sequences/h;-><init>()V

    invoke-static {p0, v0, v0}, Ll9/b;->S(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    iput-object p0, v0, Lkotlin/sequences/h;->d:Lkotlin/coroutines/d;

    return-object v0

    :pswitch_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Landroidx/core/view/c1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/view/c1;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :goto_0
    check-cast p0, Ljava/util/Iterator;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
