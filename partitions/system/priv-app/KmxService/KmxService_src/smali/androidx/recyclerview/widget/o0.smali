.class public final Landroidx/recyclerview/widget/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/recyclerview/widget/o0;->a:I

    iput p2, p0, Landroidx/recyclerview/widget/o0;->b:I

    iput p3, p0, Landroidx/recyclerview/widget/o0;->c:I

    iput p4, p0, Landroidx/recyclerview/widget/o0;->d:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/n1;)V
    .locals 1

    iget-object p1, p1, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/o0;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/o0;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/o0;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/o0;->d:I

    return-void
.end method
