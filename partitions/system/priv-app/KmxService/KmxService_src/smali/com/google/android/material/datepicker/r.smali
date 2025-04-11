.class public final Lcom/google/android/material/datepicker/r;
.super Landroidx/recyclerview/widget/j0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/datepicker/c;

.field public final b:Ld/s0;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/c;Ld/s0;)V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/j0;-><init>()V

    iget-object v0, p2, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/datepicker/n;

    iget-object v0, v0, Lcom/google/android/material/datepicker/n;->a:Ljava/util/Calendar;

    iget-object v1, p2, Lcom/google/android/material/datepicker/c;->d:Lcom/google/android/material/datepicker/n;

    iget-object v2, v1, Lcom/google/android/material/datepicker/n;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/material/datepicker/n;->a:Ljava/util/Calendar;

    iget-object v1, p2, Lcom/google/android/material/datepicker/c;->b:Lcom/google/android/material/datepicker/n;

    iget-object v1, v1, Lcom/google/android/material/datepicker/n;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_1

    sget v0, Lcom/google/android/material/datepicker/o;->d:I

    sget v1, Lcom/google/android/material/datepicker/MaterialCalendar;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-static {p1}, Lcom/google/android/material/datepicker/l;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/datepicker/r;->c:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/c;

    iput-object p3, p0, Lcom/google/android/material/datepicker/r;->b:Ld/s0;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/j0;->setHasStableIds(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "currentPage cannot be after lastPage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstPage cannot be after currentPage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/c;

    iget p0, p0, Lcom/google/android/material/datepicker/c;->g:I

    return p0
.end method

.method public final getItemId(I)J
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/c;

    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/datepicker/n;

    iget-object p0, p0, Lcom/google/android/material/datepicker/n;->a:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/u;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lcom/google/android/material/datepicker/n;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/n;-><init>(Ljava/util/Calendar;)V

    iget-object p0, p1, Lcom/google/android/material/datepicker/n;->a:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/n1;I)V
    .locals 2

    check-cast p1, Lcom/google/android/material/datepicker/q;

    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/c;

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/datepicker/n;

    iget-object v0, v0, Lcom/google/android/material/datepicker/n;->a:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/u;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    new-instance p2, Lcom/google/android/material/datepicker/n;

    invoke-direct {p2, v0}, Lcom/google/android/material/datepicker/n;-><init>(Ljava/util/Calendar;)V

    iget-object v0, p1, Lcom/google/android/material/datepicker/q;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    const v0, 0x7f090144

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/o;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/o;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/datepicker/o;->a:Lcom/google/android/material/datepicker/n;

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/o;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/o;

    invoke-direct {p1, p2, p0}, Lcom/google/android/material/datepicker/o;-><init>(Lcom/google/android/material/datepicker/n;Lcom/google/android/material/datepicker/c;)V

    throw v1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/n1;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/datepicker/l;->k(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/v0;

    const/4 v0, -0x1

    iget p0, p0, Lcom/google/android/material/datepicker/r;->c:I

    invoke-direct {p1, v0, p0}, Landroidx/recyclerview/widget/v0;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/google/android/material/datepicker/q;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/google/android/material/datepicker/q;-><init>(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/material/datepicker/q;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/datepicker/q;-><init>(Landroid/widget/LinearLayout;Z)V

    :goto_0
    return-object p0
.end method
