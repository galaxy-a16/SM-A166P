.class Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;
.super Landroidx/recyclerview/widget/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoundedWithDividerDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/r0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;-><init>(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/j1;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/r0;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/j1;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/n1;->getAbsoluteAdapterPosition()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p3

    if-lez p3, :cond_1

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    if-ne p2, p3, :cond_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-virtual {p0}, Ld/q;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p4, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    if-le p2, p0, :cond_2

    const/16 p0, 0x3c

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/j1;)V
    .locals 11

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/r0;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->a0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v4

    instance-of v5, v4, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/n1;->getItemViewType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/v0;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, 0x3c

    int-to-float v9, v4

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    const v5, 0x7f0502e3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, p3

    int-to-float v7, v3

    int-to-float v8, v0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/j1;)V
    .locals 5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->a0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v3

    instance-of v4, v3, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusListViewHolder;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/n1;->getItemViewType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->j(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Landroidx/appcompat/util/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/appcompat/util/c;->c(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->j(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Landroidx/appcompat/util/c;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroidx/appcompat/util/c;->c(I)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity$RoundedWithDividerDecoration;->this$0:Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;->j(Lcom/samsung/android/kmxservice/dashboard/view/SecurityStatusActivity;)Landroidx/appcompat/util/c;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroidx/appcompat/util/c;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
