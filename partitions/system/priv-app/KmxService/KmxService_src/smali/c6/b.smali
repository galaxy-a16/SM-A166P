.class public final Lc6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lob/a;


# direct methods
.method public synthetic constructor <init>(Lob/a;I)V
    .locals 0

    iput p2, p0, Lc6/b;->a:I

    iput-object p1, p0, Lc6/b;->b:Lob/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc6/b;->a:I

    iget-object p0, p0, Lc6/b;->b:Lob/a;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5/h;

    new-instance v0, Lm6/a;

    invoke-direct {v0, p0}, Lm6/a;-><init>(Lw5/h;)V

    return-object v0

    :pswitch_1
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le6/k;

    new-instance v0, Le6/b;

    invoke-direct {v0, p0}, Le6/b;-><init>(Le6/k;)V

    return-object v0

    :pswitch_2
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc6/c;

    new-instance v0, Lc6/a;

    invoke-direct {v0, p0}, Lc6/a;-><init>(Lc6/c;)V

    return-object v0

    :goto_0
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq6/a;

    new-instance v0, Lc3/l;

    invoke-direct {v0, p0}, Lc3/l;-><init>(Lq6/a;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
