.class public Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/enterprise/general/Typeface;Lcom/android/server/enterprise/general/Typeface;)I
    .locals 0

    .line 214
    invoke-virtual {p1}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 208
    check-cast p1, Lcom/android/server/enterprise/general/Typeface;

    check-cast p2, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;->compare(Lcom/android/server/enterprise/general/Typeface;Lcom/android/server/enterprise/general/Typeface;)I

    move-result p0

    return p0
.end method
