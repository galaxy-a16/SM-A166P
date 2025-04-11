.class public interface abstract Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkUser(Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;)Lretrofit2/Call;
    .param p1    # Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/auth/v1/challenge"
    .end annotation
.end method

.method public abstract deleteCredential(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/o0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        hasBody = true
        method = "DELETE"
        path = "v1/{serviceName}/credential"
    .end annotation
.end method

.method public abstract deleteCredential_V2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        hasBody = true
        method = "DELETE"
        path = "v2/{serviceName}/credential"
    .end annotation
.end method

.method public abstract deleteEscrow(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/o0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        hasBody = true
        method = "DELETE"
        path = "v1/escrow-info"
    .end annotation
.end method

.method public abstract deleteEscrow_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/o0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        hasBody = true
        method = "DELETE"
        path = "v2/escrow"
    .end annotation
.end method

.method public abstract getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "x-osp-appId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "challengeId"
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/auth/v1/dev/{challengeId}"
    .end annotation
.end method

.method public abstract getCredentialInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialMetaInfoResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/{serviceName}/credential/meta-info"
    .end annotation
.end method

.method public abstract getCredentialStatus(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/{serviceName}/credential"
    .end annotation
.end method

.method public abstract getCredentialStatus_V2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/{serviceName}/credential/status"
    .end annotation
.end method

.method public abstract recoveryCeRk_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/recovery-cerk"
    .end annotation
.end method

.method public abstract recoveryCredential(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/{serviceName}/recovery-credential"
    .end annotation
.end method

.method public abstract recoveryCredential_V2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialsRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialsRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialsRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/{serviceName}/recovery-credential"
    .end annotation
.end method

.method public abstract registerCredential(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/{serviceName}/credential"
    .end annotation
.end method

.method public abstract registerCredential_V2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/{serviceName}/credential"
    .end annotation
.end method

.method public abstract registerEscrow(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/InitialRegistrationResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/{serviceName}"
    .end annotation
.end method

.method public abstract registerEscrow_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/InitialRegistrationResponseV2;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/escrow"
    .end annotation
.end method

.method public abstract registerVerifier(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/verifier"
    .end annotation
.end method

.method public abstract registerVerifierCeRk_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierCeRkRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierCeRkRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierCeRkRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/verifier-cerk"
    .end annotation
.end method

.method public abstract requestChallenge(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/challenge"
    .end annotation
.end method

.method public abstract requestChallenge_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/challenge"
    .end annotation
.end method

.method public abstract requestConfirmation(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/confirmation"
    .end annotation
.end method

.method public abstract requestConfirmation_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/confirmation"
    .end annotation
.end method

.method public abstract requestDevices(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/devices"
    .end annotation
.end method

.method public abstract requestDevices_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/devices"
    .end annotation
.end method

.method public abstract requestSecretKeys(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/secrets"
    .end annotation
.end method

.method public abstract requestSecretKeys_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/secrets"
    .end annotation
.end method

.method public abstract updateCredential_V2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "serviceName"
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "v2/{serviceName}/credential"
    .end annotation
.end method

.method public abstract updateVerifier(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "v1/verifier"
    .end annotation
.end method

.method public abstract updateVerifierCeRk_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierCeRkRequest;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierCeRkRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierCeRkRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "v2/verifier-cerk"
    .end annotation
.end method
