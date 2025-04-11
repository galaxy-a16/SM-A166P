.class public final synthetic Ld/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/f;


# instance fields
.field public final synthetic a:Ld/n;


# direct methods
.method public synthetic constructor <init>(Ld/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/k0;->a:Ld/n;

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Ld/k0;->a:Ld/n;

    invoke-virtual {p0, p1}, Ld/n;->r(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
