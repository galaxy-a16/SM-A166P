.class public final synthetic Lcom/samsung/android/kmxservice/common/update/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/common/update/LivePref;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/common/update/LivePref;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/update/c;->a:Lcom/samsung/android/kmxservice/common/update/LivePref;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/update/c;->a:Lcom/samsung/android/kmxservice/common/update/LivePref;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/kmxservice/common/update/LivePref;->b(Lcom/samsung/android/kmxservice/common/update/LivePref;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
