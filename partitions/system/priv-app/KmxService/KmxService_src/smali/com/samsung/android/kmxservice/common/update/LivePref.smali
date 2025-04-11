.class public abstract Lcom/samsung/android/kmxservice/common/update/LivePref;
.super Landroidx/lifecycle/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;,
        Lcom/samsung/android/kmxservice/common/update/LivePref$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/h0;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;

.field private static final TAG:Ljava/lang/String; = "LivePref"

.field private static final preferenceName:Ljava/lang/String; = "e2ee_pref_0"


# instance fields
.field private final defValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/String;

.field private final preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/LivePref;->Companion:Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/h0;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->defValue:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/LivePref;->getValueFromPreferences(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/h0;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lcom/samsung/android/kmxservice/common/update/c;

    invoke-direct {p1, p0}, Lcom/samsung/android/kmxservice/common/update/c;-><init>(Lcom/samsung/android/kmxservice/common/update/LivePref;)V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/kmxservice/common/update/LivePref;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/LivePref;->preferenceChangeListener$lambda$0(Lcom/samsung/android/kmxservice/common/update/LivePref;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private static final preferenceChangeListener$lambda$0(Lcom/samsung/android/kmxservice/common/update/LivePref;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->key:Ljava/lang/String;

    invoke-static {p2, p1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "key"

    invoke-static {p2, p1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->defValue:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/kmxservice/common/update/LivePref;->getValueFromPreferences(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/h0;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getValueFromPreferences(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public onActive()V
    .locals 2

    const-string v0, "LivePref"

    const-string v1, "onActive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->defValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/kmxservice/common/update/LivePref;->getValueFromPreferences(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/h0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/LivePref;->Companion:Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;->getSharedPreference$KmxService_1_1_1_57_release()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onInactive()V
    .locals 2

    const-string v0, "LivePref"

    const-string v1, "onInactive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/common/update/LivePref;->Companion:Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/update/LivePref$Companion;->getSharedPreference$KmxService_1_1_1_57_release()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/LivePref;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
