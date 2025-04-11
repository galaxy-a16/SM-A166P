.class public final Lcom/samsung/android/kmxservice/common/update/SharedPreferenceStringSetLiveData;
.super Lcom/samsung/android/kmxservice/common/update/LivePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/kmxservice/common/update/LivePref<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defValue"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/LivePref;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValueFromPreferences(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/SharedPreferenceStringSetLiveData;->getValueFromPreferences(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getValueFromPreferences(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string p0, "key"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "defValue"

    invoke-static {p2, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->Companion:Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;->getStringSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
