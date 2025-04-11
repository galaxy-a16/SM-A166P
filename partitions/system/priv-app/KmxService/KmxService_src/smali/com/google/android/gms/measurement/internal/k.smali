.class public final Lcom/google/android/gms/measurement/internal/k;
.super Lcom/google/android/gms/measurement/internal/a4;
.source "SourceFile"


# instance fields
.field public c:J

.field public d:Ljava/lang/String;

.field public e:Landroid/accounts/AccountManager;

.field public f:Ljava/lang/Boolean;

.field public g:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/a4;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    return-void
.end method


# virtual methods
.method public final l()Z
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/k;->c:J

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-static {v1, v2, v0}, Landroidx/activity/b;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->d:Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method public final o()J
    .locals 2

    invoke-virtual {p0}, Lb0/h;->k()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/k;->g:J

    return-wide v0
.end method

.method public final p()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/a4;->m()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/k;->c:J

    return-wide v0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/a4;->m()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/k;->d:Ljava/lang/String;

    return-object p0
.end method
