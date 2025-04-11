.class public final synthetic Ld/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Ld/j0;


# direct methods
.method public synthetic constructor <init>(Ld/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/b0;->a:Ld/j0;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Ld/b0;->a:Ld/j0;

    invoke-virtual {p0}, Ld/j0;->F()Z

    return-void
.end method
