.class public Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# instance fields
.field public destroyed:Z

.field public secureMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->destroyed:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;-><init>()V

    return-void
.end method


# virtual methods
.method public setDestroyed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->destroyed:Z

    return-void
.end method

.method public setSecureMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->secureMode:I

    return-void
.end method
