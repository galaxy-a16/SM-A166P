.class public final Ld/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ld/l;


# direct methods
.method public constructor <init>(Ld/l;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ld/g;->b:Ld/l;

    iput-object p2, p0, Ld/g;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    new-instance p2, Landroidx/activity/k;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Landroidx/activity/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
