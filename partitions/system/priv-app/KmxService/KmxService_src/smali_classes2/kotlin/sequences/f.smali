.class public final Lkotlin/sequences/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/g;


# instance fields
.field public final synthetic a:I

.field public final b:Lvb/b;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/text/e;Lvb/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/sequences/f;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/sequences/f;->b:Lvb/b;

    return-void
.end method

.method public constructor <init>(Lvb/a;Lvb/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/f;->a:I

    const-string v0, "getNextValue"

    .line 2
    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/sequences/f;->b:Lvb/b;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lkotlin/sequences/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lkotlin/sequences/e;

    invoke-direct {v0, p0}, Lkotlin/sequences/e;-><init>(Lkotlin/sequences/f;)V

    return-object v0

    :goto_0
    new-instance v0, Lkotlin/sequences/l;

    invoke-direct {v0, p0}, Lkotlin/sequences/l;-><init>(Lkotlin/sequences/f;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
