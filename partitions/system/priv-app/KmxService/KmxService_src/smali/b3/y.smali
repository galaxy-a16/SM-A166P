.class public final Lb3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lb3/y;->a:I

    iput-object p1, p0, Lb3/y;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lb3/y;->a:I

    iget-object p0, p0, Lb3/y;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lb3/p;

    invoke-virtual {p0}, Lb3/p;->h()V

    return-void

    :pswitch_1
    check-cast p0, Lb3/z;

    iget-object p0, p0, Lb3/z;->i:Lb3/r;

    new-instance v0, La3/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, La3/b;-><init>(I)V

    invoke-virtual {p0, v0}, Lb3/r;->c(La3/b;)V

    return-void

    :goto_0
    check-cast p0, Lb3/o;

    iget-object p0, p0, Lb3/o;->a:Lb3/p;

    iget-object p0, p0, Lb3/p;->d:Lc3/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " disconnecting because it was signed out."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc3/e;->c(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
