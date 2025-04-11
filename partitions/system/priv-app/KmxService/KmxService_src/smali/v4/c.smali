.class public final synthetic Lv4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lv4/c;->a:I

    iput-object p2, p0, Lv4/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lv4/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lv4/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv4/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lv4/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lv4/c;->a:I

    iget-object v1, p0, Lv4/c;->c:Ljava/lang/Object;

    iget-object p0, p0, Lv4/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, La5/i;

    check-cast v1, La5/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, La5/c;->f:La5/f;

    new-instance v2, Ln2/l;

    invoke-direct {v2, v1, p0}, Ln2/l;-><init>(La5/c;La5/i;)V

    invoke-interface {v0, v2}, La5/f;->f(Ln2/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lv4/g;

    check-cast v1, Landroid/content/Context;

    new-instance v0, Ln5/a;

    invoke-virtual {p0}, Lv4/g;->d()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lv4/g;->d:La5/i;

    const-class v3, Lg5/b;

    invoke-interface {p0, v3}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg5/b;

    invoke-direct {v0, v1, v2}, Ln5/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :goto_0
    check-cast v1, Landroid/content/Context;

    check-cast p0, Ljava/lang/String;

    new-instance v0, Lh5/g;

    invoke-direct {v0, v1, p0}, Lh5/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
