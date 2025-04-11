.class public abstract Lcom/android/server/pm/NfcFeatureManager;
.super Ljava/lang/Object;
.source "NfcFeatureManager.java"


# direct methods
.method public static supportEse()Z
    .locals 2

    const-string/jumbo v0, "ro.vendor.nfc.support.ese"

    const/4 v1, 0x0

    .line 137
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportEse(Ljava/lang/String;Z)Z
    .locals 0

    .line 120
    invoke-static {}, Lcom/android/server/pm/NfcFeatureManager;->supportEse()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ese"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static supportNfc()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSim()Z
    .locals 2

    const-string/jumbo v0, "ro.vendor.nfc.support.uicc"

    const/4 v1, 0x0

    .line 133
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportSim(Ljava/lang/String;Z)Z
    .locals 0

    .line 116
    invoke-static {}, Lcom/android/server/pm/NfcFeatureManager;->supportSim()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "sim"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static updateFeatureAndPackage(Landroid/util/ArrayMap;Lcom/samsung/android/server/pm/install/SkippingApks;Z)V
    .locals 10

    const-string/jumbo v0, "ro.boot.product.hardware.sku"

    const-string v1, ""

    .line 27
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hcesimese"

    const-string v2, "hceese"

    const-string v3, "hcesim"

    const-string v4, "hce"

    const-string v5, "disabled"

    .line 28
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "removed eSE feature"

    const-string v3, "cannot remove eSE feature"

    const-string/jumbo v4, "removed SIM feature"

    const-string v6, "cannot remove SIM feature"

    const-string v7, "android.hardware.nfc.ese"

    const-string v8, "android.hardware.nfc.uicc"

    const-string v9, "NfcFeatureManager"

    if-eqz v1, :cond_7

    .line 34
    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_0

    const-string p2, "android.hardware.nfc"

    .line 36
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.hardware.nfc.hce"

    .line 37
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.hardware.nfc.hcef"

    .line 38
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.hardware.nfc.any"

    .line 39
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.sofware.nfc.beam"

    .line 42
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "com.nxp.mifare"

    .line 43
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "cannot remove NFC features"

    .line 46
    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/install/SkippingApks;->getSkippingApkList()Ljava/util/ArrayList;

    const-string p0, "Nfc.apk"

    .line 51
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "NfcNci.apk"

    .line 52
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "NfcFn.apk"

    .line 53
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "NfcTest.apk"

    .line 54
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "NfcTag.apk"

    .line 55
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "Tag.apk"

    .line 56
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "SamsungNfcTag.apk"

    .line 57
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    const-string p0, "NfcFactoryCard.apk"

    .line 58
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const-string p0, "cannot remove NFC packages"

    .line 61
    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string/jumbo p0, "removed NFC features and packages"

    .line 64
    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 67
    :cond_2
    invoke-static {v0, p2}, Lcom/android/server/pm/NfcFeatureManager;->supportSim(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p0, :cond_3

    .line 69
    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 73
    :cond_3
    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_4
    :goto_2
    invoke-static {v0, p2}, Lcom/android/server/pm/NfcFeatureManager;->supportEse(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p0, :cond_5

    .line 78
    invoke-virtual {p0, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 82
    :cond_5
    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "Unexpected exception: "

    .line 87
    invoke-static {v9, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-void

    .line 91
    :cond_7
    invoke-static {}, Lcom/android/server/pm/NfcFeatureManager;->supportNfc()Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 94
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Non-single binary (sku: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/android/server/pm/NfcFeatureManager;->supportSim()Z

    move-result p1

    if-nez p1, :cond_a

    if-eqz p0, :cond_9

    .line 97
    invoke-virtual {p0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 100
    :cond_9
    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_a
    :goto_4
    invoke-static {}, Lcom/android/server/pm/NfcFeatureManager;->supportEse()Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz p0, :cond_b

    .line 105
    invoke-virtual {p0, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 108
    :cond_b
    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_5
    return-void
.end method
