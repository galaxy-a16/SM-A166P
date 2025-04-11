.class public abstract Lt/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lt/y;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract b(Lt/k0;)V
.end method

.method public abstract c()Ljava/lang/String;
.end method
