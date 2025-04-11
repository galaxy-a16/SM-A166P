.class public final Lcom/samsung/android/kmxservice/common/update/SharedPreferenceIntLiveData;
.super Lcom/samsung/android/kmxservice/common/update/LivePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/kmxservice/common/update/LivePref<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/LivePref;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getValueFromPreferences(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0

    .line 1
    const-string p0, "key"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->Companion:Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValueFromPreferences(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/SharedPreferenceIntLiveData;->getValueFromPreferences(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
