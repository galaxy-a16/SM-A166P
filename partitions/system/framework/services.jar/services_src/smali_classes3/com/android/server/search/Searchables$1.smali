.class public Lcom/android/server/search/Searchables$1;
.super Ljava/lang/Object;
.source "Searchables.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 392
    :cond_0
    invoke-static {p1}, Lcom/android/server/search/Searchables;->-$$Nest$smisSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    .line 393
    invoke-static {p2}, Lcom/android/server/search/Searchables;->-$$Nest$smisSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 405
    :cond_2
    iget p0, p2, Landroid/content/pm/ResolveInfo;->priority:I

    iget p1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 386
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/search/Searchables$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p0

    return p0
.end method
