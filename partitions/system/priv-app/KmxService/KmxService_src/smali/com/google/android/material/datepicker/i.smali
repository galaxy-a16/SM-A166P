.class public final Lcom/google/android/material/datepicker/i;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic F:I

.field public final synthetic G:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/i;->G:Lcom/google/android/material/datepicker/MaterialCalendar;

    iput p3, p0, Lcom/google/android/material/datepicker/i;->F:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final C0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/a0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Landroidx/recyclerview/widget/a0;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    iput p2, v0, Landroidx/recyclerview/widget/b0;->a:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->D0(Landroidx/recyclerview/widget/b0;)V

    return-void
.end method

.method public final F0(Landroidx/recyclerview/widget/j1;[I)V
    .locals 2

    iget p1, p0, Lcom/google/android/material/datepicker/i;->F:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/material/datepicker/i;->G:Lcom/google/android/material/datepicker/MaterialCalendar;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    aput p1, p2, v1

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    aput p0, p2, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    aput p1, p2, v1

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aput p0, p2, v0

    :goto_0
    return-void
.end method
