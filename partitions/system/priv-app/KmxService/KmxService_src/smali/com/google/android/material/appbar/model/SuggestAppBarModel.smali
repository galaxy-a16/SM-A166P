.class public Lcom/google/android/material/appbar/model/SuggestAppBarModel;
.super Lcom/google/android/material/appbar/model/AppBarModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/model/SuggestAppBarModel$Builder;
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


# instance fields
.field public final a:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;


# direct methods
.method public constructor <init>(Lkotlin/reflect/c;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/ButtonListModel;)V
    .locals 0
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

    const-string p3, "kclazz"

    invoke-static {p1, p3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "context"

    invoke-static {p2, p3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "buttonModels"

    invoke-static {p5, p3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/AppBarModel;-><init>(Lkotlin/reflect/c;Landroid/content/Context;)V

    iput-object p4, p0, Lcom/google/android/material/appbar/model/SuggestAppBarModel;->a:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    return-void
.end method
