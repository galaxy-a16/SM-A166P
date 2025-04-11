.class public abstract Lj/e;
.super Lj/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Lj/c;

.field public b:Lj/c;


# direct methods
.method public constructor <init>(Lj/c;Lj/c;)V
    .locals 0

    invoke-direct {p0}, Lj/f;-><init>()V

    iput-object p2, p0, Lj/e;->a:Lj/c;

    iput-object p1, p0, Lj/e;->b:Lj/c;

    return-void
.end method


# virtual methods
.method public final a(Lj/c;)V
    .locals 2

    iget-object v0, p0, Lj/e;->a:Lj/c;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj/e;->b:Lj/c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lj/e;->b:Lj/c;

    iput-object v0, p0, Lj/e;->a:Lj/c;

    :cond_0
    iget-object v0, p0, Lj/e;->a:Lj/c;

    if-ne v0, p1, :cond_1

    move-object v1, p0

    check-cast v1, Lj/b;

    iget v1, v1, Lj/b;->c:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lj/c;->d:Lj/c;

    goto :goto_1

    :goto_0
    iget-object v0, v0, Lj/c;->c:Lj/c;

    :goto_1
    iput-object v0, p0, Lj/e;->a:Lj/c;

    :cond_1
    iget-object v0, p0, Lj/e;->b:Lj/c;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lj/e;->c()Lj/c;

    move-result-object p1

    iput-object p1, p0, Lj/e;->b:Lj/c;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lj/c;
    .locals 2

    iget-object v0, p0, Lj/e;->b:Lj/c;

    iget-object v1, p0, Lj/e;->a:Lj/c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    check-cast p0, Lj/b;

    iget p0, p0, Lj/b;->c:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, v0, Lj/c;->c:Lj/c;

    goto :goto_1

    :goto_0
    iget-object p0, v0, Lj/c;->d:Lj/c;

    :goto_1
    return-object p0

    :cond_1
    :goto_2
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lj/e;->b:Lj/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj/e;->b:Lj/c;

    invoke-virtual {p0}, Lj/e;->c()Lj/c;

    move-result-object v1

    iput-object v1, p0, Lj/e;->b:Lj/c;

    return-object v0
.end method
