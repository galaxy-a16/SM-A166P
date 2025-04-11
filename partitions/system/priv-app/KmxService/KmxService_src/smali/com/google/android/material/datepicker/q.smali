.class public final Lcom/google/android/material/datepicker/q;
.super Landroidx/recyclerview/widget/n1;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/n1;-><init>(Landroid/view/View;)V

    const v0, 0x7f090149

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/q;->a:Landroid/widget/TextView;

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    new-instance v1, Landroidx/core/view/e0;

    const/4 v2, 0x3

    const v3, 0x7f09023b

    invoke-direct {v1, v3, v2}, Landroidx/core/view/e0;-><init>(II)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroidx/core/view/g0;->c(Landroid/view/View;Ljava/lang/Object;)V

    const v1, 0x7f090144

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
