.class public Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;
.super Lcom/google/android/material/appbar/model/SuggestAppBarModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/model/SuggestAppBarItemModel$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/appbar/model/SuggestAppBarModel<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;


# direct methods
.method public constructor <init>(Lkotlin/reflect/c;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/ButtonListModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;",
            "Lcom/google/android/material/appbar/model/ButtonListModel;",
            ")V"
        }
    .end annotation

    const-string v0, "kclazz"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonListModel"

    invoke-static {p5, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/google/android/material/appbar/model/SuggestAppBarModel;-><init>(Lkotlin/reflect/c;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/ButtonListModel;)V

    iput-object p4, p0, Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;->b:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    return-void
.end method
