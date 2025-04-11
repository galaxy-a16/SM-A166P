.class public final Lcom/google/android/material/appbar/model/ButtonModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/google/android/material/appbar/model/ButtonModel;-><init>(Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/appbar/model/ButtonModel;->a:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;ILkotlin/jvm/internal/k;)V
    .locals 1

    .line 3
    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/model/ButtonModel;-><init>(Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;)V

    return-void
.end method
