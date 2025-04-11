.class public final Lkotlin/collections/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/text/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/collections/u;->a:I

    .line 1
    iput-object p1, p0, Lkotlin/collections/u;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lvb/a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/collections/u;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/u;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lkotlin/collections/u;->a:I

    iget-object p0, p0, Lkotlin/collections/u;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lkotlin/collections/v;

    check-cast p0, Lvb/a;

    invoke-interface {p0}, Lvb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-direct {v0, p0}, Lkotlin/collections/v;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :goto_0
    check-cast p0, Lkotlin/sequences/g;

    invoke-interface {p0}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
