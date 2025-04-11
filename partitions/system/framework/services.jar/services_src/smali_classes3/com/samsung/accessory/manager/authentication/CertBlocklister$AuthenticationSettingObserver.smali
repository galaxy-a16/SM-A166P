.class public Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;
.super Landroid/database/ContentObserver;
.source "CertBlocklister.java"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mKey:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->-$$Nest$sfputmIsBlocked(Z)V

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->-$$Nest$sfgetmCertBlocklistListener()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;->onAuthenticationBlocked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "false"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->-$$Nest$sfputmIsBlocked(Z)V

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->-$$Nest$sfgetmCertBlocklistListener()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;->onAuthenticationBlocked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
