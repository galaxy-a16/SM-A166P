.class public final Lgc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/j;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgc/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    sget-boolean v0, Lfc/d;->d:Z

    invoke-static {}, Lfc/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p0, p0, Lorg/bouncycastle/jsse/BCSSLSocket;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    sget-boolean v0, Lfc/g;->d:Z

    invoke-static {}, Lfc/e;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    iget p0, p0, Lgc/g;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lgc/g;->d(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1}, Lgc/g;->c(Ljavax/net/ssl/SSLSocket;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Lgc/l;
    .locals 0

    iget p0, p0, Lgc/g;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lgc/h;

    invoke-direct {p0}, Lgc/h;-><init>()V

    return-object p0

    :goto_0
    new-instance p0, Lgc/i;

    invoke-direct {p0}, Lgc/i;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
