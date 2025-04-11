.class public final Lcom/samsung/android/kmxservice/common/update/SharedPreferenceBooleanLiveData;
.super Lcom/samsung/android/kmxservice/common/update/LivePref;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/kmxservice/common/update/LivePref<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/LivePref;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getValueFromPreferences(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 0

    .line 1
    const-string p0, "key"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->Companion:Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValueFromPreferences(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/SharedPreferenceBooleanLiveData;->getValueFromPreferences(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
