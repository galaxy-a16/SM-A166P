.class public final Lcom/google/android/material/appbar/model/ButtonListModel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/model/ButtonStyle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/appbar/model/ButtonStyle;",
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/model/ButtonModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "buttonStyle"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "buttonModels"

    invoke-static {p2, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
