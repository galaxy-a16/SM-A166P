.class public final Lm1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/a;
.implements Lj3/c;
.implements Lcom/google/crypto/tink/shaded/protobuf/q;
.implements Lcom/google/crypto/tink/shaded/protobuf/f;
.implements Lu4/e;
.implements La5/g;
.implements Lcom/google/protobuf/y;
.implements Lcom/google/protobuf/a7;
.implements Lcom/samsung/android/sdk/smp/marketing/e;
.implements Lgb/g;
.implements Lgb/h;
.implements Lgb/d;


# static fields
.field public static b:Lm1/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lm1/e;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, Lm1/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/n;)V
    .locals 0

    const/16 p1, 0xe

    iput p1, p0, Lm1/e;->a:I

    .line 3
    invoke-direct {p0, p1}, Lm1/e;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lm1/c;)V
    .locals 0

    const/16 p1, 0x14

    iput p1, p0, Lm1/e;->a:I

    .line 4
    invoke-direct {p0, p1}, Lm1/e;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lm1/d;)V
    .locals 0

    const/16 p1, 0x18

    iput p1, p0, Lm1/e;->a:I

    .line 5
    invoke-direct {p0, p1}, Lm1/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(II[B)[B
    .locals 1

    iget p0, p0, Lm1/e;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p2, [B

    const/4 v0, 0x0

    invoke-static {p3, p1, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :goto_0
    add-int/2addr p2, p1

    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lm1/e;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_0
    new-instance p0, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    invoke-direct {p0, p1}, Lio/reactivex/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    :goto_1
    :pswitch_2
    return-void

    :goto_2
    check-cast p1, Ljava/lang/Throwable;

    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_3
    invoke-static {p1}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    new-instance p0, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    invoke-direct {p0, p1}, Lio/reactivex/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_3
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/i;Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lm1/e;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_1
    if-nez p2, :cond_1

    invoke-static {p1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object p0

    :goto_1
    return-object p0

    :goto_2
    if-nez p2, :cond_2

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    goto :goto_3

    :cond_2
    invoke-static {p1, p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 10

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/c;

    iget-object v2, v0, La5/c;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v7, Lp5/d;

    const/4 v1, 0x1

    invoke-direct {v7, v2, v1, v0}, Lp5/d;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v9, La5/c;

    iget-object v3, v0, La5/c;->b:Ljava/util/Set;

    iget-object v4, v0, La5/c;->c:Ljava/util/Set;

    iget v5, v0, La5/c;->d:I

    iget v6, v0, La5/c;->e:I

    iget-object v8, v0, La5/c;->g:Ljava/util/Set;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, La5/c;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILa5/f;Ljava/util/Set;)V

    move-object v0, v9

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final e(Landroid/content/Intent;)V
    .locals 0

    const/high16 p0, 0x10000000

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2}, Lj3/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;Lj3/a;)Lj3/b;
    .locals 4

    iget p0, p0, Lm1/e;->a:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance p0, Lj3/b;

    invoke-direct {p0}, Lj3/b;-><init>()V

    invoke-interface {p3, p1, p2}, Lj3/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lj3/b;->a:I

    invoke-interface {p3, p1, p2, v2}, Lj3/a;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lj3/b;->b:I

    iget p2, p0, Lj3/b;->a:I

    if-nez p2, :cond_0

    if-nez p1, :cond_1

    iput v0, p0, Lj3/b;->c:I

    goto :goto_0

    :cond_0
    move v0, p2

    :cond_1
    if-lt v0, p1, :cond_2

    iput v1, p0, Lj3/b;->c:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lj3/b;->c:I

    :goto_0
    return-object p0

    :pswitch_1
    new-instance p0, Lj3/b;

    invoke-direct {p0}, Lj3/b;-><init>()V

    invoke-interface {p3, p1, p2}, Lj3/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lj3/b;->a:I

    if-eqz v0, :cond_3

    iput v1, p0, Lj3/b;->c:I

    goto :goto_1

    :cond_3
    invoke-interface {p3, p1, p2, v2}, Lj3/a;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lj3/b;->b:I

    if-eqz p1, :cond_4

    iput v2, p0, Lj3/b;->c:I

    :cond_4
    :goto_1
    return-object p0

    :goto_2
    new-instance p0, Lj3/b;

    invoke-direct {p0}, Lj3/b;-><init>()V

    invoke-interface {p3, p1, p2}, Lj3/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lj3/b;->a:I

    invoke-interface {p3, p1, p2, v2}, Lj3/a;->i(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lj3/b;->b:I

    iget p2, p0, Lj3/b;->a:I

    if-nez p2, :cond_5

    if-nez p1, :cond_6

    iput v0, p0, Lj3/b;->c:I

    goto :goto_3

    :cond_5
    move v0, p2

    :cond_6
    if-lt p1, v0, :cond_7

    iput v2, p0, Lj3/b;->c:I

    goto :goto_3

    :cond_7
    iput v1, p0, Lj3/b;->c:I

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public final i(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0

    invoke-static {p1, p2, p3}, Lj3/d;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/m3;

    invoke-virtual {p1}, Lcom/google/protobuf/m3;->getNumber()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lm1/e;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "IdentityFunction"

    return-object p0

    :pswitch_2
    const-string p0, "EmptyConsumer"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
