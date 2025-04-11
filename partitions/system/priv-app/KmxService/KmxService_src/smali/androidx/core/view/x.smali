.class public final synthetic Landroidx/core/view/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/a;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroidx/core/view/z;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroidx/core/view/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/x;->a:Landroid/view/View;

    iput-object p2, p0, Landroidx/core/view/x;->b:Landroidx/core/view/z;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/core/view/a0;

    iget-object v0, p0, Landroidx/core/view/x;->a:Landroid/view/View;

    iget-object p0, p0, Landroidx/core/view/x;->b:Landroidx/core/view/z;

    invoke-virtual {p1, v0, p0}, Landroidx/core/view/a0;->a(Landroid/view/View;Landroidx/core/view/z;)V

    return-void
.end method
