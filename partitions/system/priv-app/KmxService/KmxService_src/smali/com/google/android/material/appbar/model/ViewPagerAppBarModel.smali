.class public Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;
.super Lcom/google/android/material/appbar/model/AppBarModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/model/ViewPagerAppBarModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/appbar/model/AppBarModel<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/reflect/c;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/material/appbar/model/AppBarModel<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "kclazz"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appBarModels"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/AppBarModel;-><init>(Lkotlin/reflect/c;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/c;Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 2
    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/model/ViewPagerAppBarModel;-><init>(Lkotlin/reflect/c;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
